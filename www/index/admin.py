from django.contrib import admin
from .models import *

# Register your models here.

admin.site.site_title = '渗透测试工具集后台管理'
admin.site.site_header = '渗透测试工具集后台管理'

admin.site.register(Label)
admin.site.register(Navigation)
admin.site.register(Script)
