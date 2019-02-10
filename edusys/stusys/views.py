from django.shortcuts import render
from .models import Login, StudentInfo, TutorInfo, Nation, Policate, SelectCourse, CultivateScheme, CourseInfo
from django.shortcuts import redirect
import datetime


# Create your views here.
# 创建index首页函数 return返回首页前端模板
def index(request):
    return render(request, 'index.html')


# 创建login登录函数 return返回登录页前端模板
def login(request):
    if request.session.get('is_login', None):
        return redirect('/index/')
    if request.method == 'POST':
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)
        username_raw = username
        username = (username,)
        password = (password,)
        print(username, password)
        if username in Login.objects.values_list('name'):
            if password in Login.objects.filter(name=username_raw).values_list('password') :
                print('right')
                if username in StudentInfo.objects.values_list('graduateid'):
                    print('hhh')
                    info = StudentInfo.objects.get(graduateid=username_raw)
                    # userinfo = StudentInfo.objects.filter(graduateid=username_raw)
                    name = info.graduatename
                    print(name)
                    print(info.tutorid.tutorid)
                    request.session['is_login'] = True
                    request.session['user_id'] = username_raw
                    request.session['uesr_name'] = name
                    # print(request.session['uesr_name'])
                    return render(request, 'stu_logined.html', {"info": info})
                else:
                    info = TutorInfo.objects.get(tutorid=username_raw)
                    name = info.tutorname
                    request.session['is_login'] = True
                    request.session['user_id'] = username_raw
                    request.session['uesr_name'] = name
                    return render(request, 'tch_logined.html', {"info": info})
            else:
                print('wrong')

    return render(request, 'login.html')


# 已登陆函数，根据教师和学生的不同登陆返回相应的页面
def logined(request):
    temp = (request.session['user_id'],)
    print(StudentInfo.objects.values_list('graduateid'))
    if temp in StudentInfo.objects.values_list('graduateid'):
        return render(request,'stu_logined.html')
    else:
        return render(request, 'tch_logined.html')


# 返回学生信息页面
def stu_info(request):
    userid = request.session['user_id']
    temp = StudentInfo.objects.get(graduateid=userid)
    info = [{"id":temp.graduateid, "name":temp.graduatename, "sex":temp.sex, "birthday":temp.birthday, "policate":
        temp.policateid.policatename, "nation":temp.nationid.nationname, "grade":temp.grade,
        "tutor":temp.tutorid.tutorname, "tel":temp.tel}]
    return render(request, 'stu_info.html', {"data":info})


# 返回课程信息页面
def stu_course(request):
    userid = request.session['user_id']
    print(userid)
    info = []
    selected_course = SelectCourse.objects.filter(graduateid=userid)
    for each in selected_course:
        teacher = TutorInfo.objects.get(tutorid=each.tutorid)
        temp = {"id": each.schemeid.courseid.courseid, "name": each.schemeid.courseid.coursename,
        "studyhour": each.schemeid.courseid.studyhour, "teacher": teacher.tutorname, "teststy":
        each.schemeid.courseid.teststy, "score": each.score}
        info.append(temp)
    return render(request,'stu_course.html', {"data":info})


# 返回选课页面
def select_course(request):
    userid = request.session['user_id']
    info = []
    course = CultivateScheme.objects.filter(specialityid=StudentInfo.objects.get(graduateid=userid).specialityid)
    for t in course:
        each = t.courseid
        temp = {"id": each.courseid, "name": each.coursename, "studyhour": each.studyhour, "credit":each.credit,
                "teststy": each.teststy}
        info.append(temp)
    return render(request, 'select_course.html', {"data":info})


# 进行选课操作
def add_course(request):
    userid = request.session['user_id']
    if request.method == 'POST':
        a = request.POST.get('m', None)
        # course_temp = CourseInfo.objects.get(courseid=a)
        schID = CultivateScheme.objects.get(specialityid=StudentInfo.objects.get(graduateid=userid).specialityid, courseid=a)
        SelectCourse.objects.create(schemeid=schID, graduateid=StudentInfo.objects.get(graduateid=userid), tutorid=StudentInfo.objects.get(graduateid=userid).tutorid.tutorid, selectcurrtime=datetime.datetime.now())
        info = []
        course = CultivateScheme.objects.filter(specialityid=StudentInfo.objects.get(graduateid=userid).specialityid)
        for t in course:
            each = t.courseid
            temp = {"id": each.courseid, "name": each.coursename, "studyhour": each.studyhour, "credit": each.credit,
                    "teststy": each.teststy}
            info.append(temp)
    return render(request, 'select_course.html', {"data":info})


# 创建logout退出登录函数 return返回登录页面
def logout(request):
    #  重定向 退出登录直接跳转到首页
    request.session.flush()
    return render(request, 'login.html')
