from django.db import models


# Create your models here.
class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class CourseInfo(models.Model):
    courseid = models.CharField(db_column='CourseID', primary_key=True, max_length=10)  # Field name made lowercase.
    coursename = models.CharField(db_column='CourseName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    studyhour = models.IntegerField(db_column='StudyHour', blank=True, null=True)  # Field name made lowercase.
    credit = models.DecimalField(db_column='Credit', max_digits=18, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    teststy = models.CharField(db_column='TestSty', max_length=4, blank=True, null=True)  # Field name made lowercase.
    deptid = models.ForeignKey('DeptInfo', models.DO_NOTHING, db_column='DeptID', blank=True, null=True)  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'course_info'


class Coursetype(models.Model):
    coursetype = models.CharField(db_column='CourseType', primary_key=True, max_length=5)  # Field name made lowercase.
    coursetypename = models.CharField(db_column='CourseTypeName', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'coursetype'


class CultivateScheme(models.Model):
    schemeid = models.DecimalField(db_column='SchemeID', primary_key=True, max_digits=9, decimal_places=0)  # Field name made lowercase.
    specialityid = models.ForeignKey('SpecialityInfo', models.DO_NOTHING, db_column='SpecialityID')  # Field name made lowercase.
    grade = models.CharField(db_column='Grade', max_length=4)  # Field name made lowercase.
    coursetype = models.ForeignKey(Coursetype, models.DO_NOTHING, db_column='CourseType')  # Field name made lowercase.
    courseid = models.ForeignKey(CourseInfo, models.DO_NOTHING, db_column='CourseID')  # Field name made lowercase.
    year = models.CharField(db_column='Year', max_length=9)  # Field name made lowercase.
    term = models.CharField(db_column='Term', max_length=5)  # Field name made lowercase.
    teststy = models.CharField(db_column='TestSty', max_length=4, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cultivate_scheme'


class DeptInfo(models.Model):
    deptid = models.CharField(db_column='DeptID', primary_key=True, max_length=10)  # Field name made lowercase.
    deptname = models.CharField(db_column='DeptName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    description = models.CharField(db_column='Description', max_length=2000, blank=True, null=True)  # Field name made lowercase.
    isused = models.TextField(db_column='IsUsed', blank=True, null=True)  # Field name made lowercase. This field type is a guess.

    class Meta:
        managed = False
        db_table = 'dept_info'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Login(models.Model):
    name = models.CharField(db_column='Name', primary_key=True, max_length=10)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=45, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'login'


class Nation(models.Model):
    nationid = models.CharField(db_column='NationID', primary_key=True, max_length=2)  # Field name made lowercase.
    nationname = models.CharField(db_column='NationName', max_length=20, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'nation'


class Policate(models.Model):
    policateid = models.CharField(db_column='Policateid', primary_key=True, max_length=2)  # Field name made lowercase.
    policatename = models.CharField(db_column='Policatename', max_length=24, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'policate'


class SelectCourse(models.Model):
    schemeid = models.ForeignKey(CultivateScheme, models.DO_NOTHING, db_column='SchemeID', blank=True, null=True)  # Field name made lowercase.
    graduateid = models.ForeignKey('StudentInfo', models.DO_NOTHING, db_column='GraduateID', blank=True, null=True)  # Field name made lowercase.
    class_field = models.CharField(db_column='Class', max_length=4, blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    tutorid = models.CharField(db_column='TutorID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    score = models.FloatField(db_column='Score', blank=True, null=True)  # Field name made lowercase.
    selectcurrtime = models.DateTimeField(db_column='SelectCurrTime', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'select_course'


class Sex(models.Model):
    sex = models.CharField(db_column='Sex', primary_key=True, max_length=1)  # Field name made lowercase.
    sexname = models.CharField(db_column='SexName', max_length=10, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'sex'


class SpecialityInfo(models.Model):
    specialityid = models.IntegerField(db_column='SpecialityID', primary_key=True)  # Field name made lowercase.
    specialityno = models.CharField(db_column='SpecialityNo', max_length=8, blank=True, null=True)  # Field name made lowercase.
    specialityname = models.CharField(db_column='SpecialityName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    specialitydescription = models.CharField(db_column='SpecialityDescription', max_length=2000, blank=True, null=True)  # Field name made lowercase.
    deptid = models.CharField(db_column='DeptID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    tutordescript = models.CharField(db_column='TutorDescript', max_length=5000, blank=True, null=True)  # Field name made lowercase.
    isused = models.TextField(db_column='IsUsed', blank=True, null=True)  # Field name made lowercase. This field type is a guess.

    class Meta:
        managed = False
        db_table = 'speciality_info'


class StudentInfo(models.Model):
    graduateid = models.CharField(db_column='GraduateID', primary_key=True, max_length=10)  # Field name made lowercase.
    graduatename = models.CharField(db_column='GraduateName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    sex = models.ForeignKey(Sex, models.DO_NOTHING, db_column='Sex', blank=True, null=True)  # Field name made lowercase.
    birthday = models.DateTimeField(db_column='Birthday', blank=True, null=True)  # Field name made lowercase.
    policateid = models.ForeignKey(Policate, models.DO_NOTHING, db_column='PolicateID', blank=True, null=True)  # Field name made lowercase.
    nationid = models.ForeignKey(Nation, models.DO_NOTHING, db_column='NationID', blank=True, null=True)  # Field name made lowercase.
    idcardno = models.CharField(db_column='IDcardNo', max_length=18, blank=True, null=True)  # Field name made lowercase.
    grade = models.CharField(db_column='Grade', max_length=4, blank=True, null=True)  # Field name made lowercase.
    specialityid = models.IntegerField(db_column='SpecialityID', blank=True, null=True)  # Field name made lowercase.
    tutorid = models.ForeignKey('TutorInfo', models.DO_NOTHING, db_column='TutorID', blank=True, null=True)  # Field name made lowercase.
    tel = models.CharField(db_column='Tel', max_length=14, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=50, blank=True, null=True)  # Field name made lowercase.
    city = models.CharField(db_column='City', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'student_info'


class TutorInfo(models.Model):
    tutorid = models.CharField(db_column='TutorID', primary_key=True, max_length=10)  # Field name made lowercase.
    tutorname = models.CharField(db_column='TutorName', max_length=20, blank=True, null=True)  # Field name made lowercase.
    tutorsex = models.ForeignKey(Sex, models.DO_NOTHING, db_column='TutorSex', blank=True, null=True)  # Field name made lowercase.
    tutorbirthday = models.DateTimeField(db_column='TutorBirthday', blank=True, null=True)  # Field name made lowercase.
    tutorlevel = models.ForeignKey('Tutorlevel', models.DO_NOTHING, db_column='TutorLevel', blank=True, null=True)  # Field name made lowercase.
    tutordescript = models.CharField(db_column='TutorDescript', max_length=5000, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=40, blank=True, null=True)  # Field name made lowercase.
    homepage = models.CharField(db_column='HomePage', max_length=100, blank=True, null=True)  # Field name made lowercase.
    tel = models.CharField(db_column='Tel', max_length=15, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tutor_info'


class Tutorlevel(models.Model):
    tutorlevel = models.CharField(db_column='TutorLevel', primary_key=True, max_length=3)  # Field name made lowercase.
    levelname = models.CharField(db_column='LevelName', max_length=20, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tutorlevel'


class TutorspecRelationship(models.Model):
    tutorid = models.CharField(db_column='TutorID', primary_key=True, max_length=10)  # Field name made lowercase.
    specialityid = models.IntegerField(db_column='SpecialityID')  # Field name made lowercase.
    tutordate = models.DateTimeField(db_column='TutorDate', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tutorspec_relationship'

