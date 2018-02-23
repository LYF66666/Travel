# -*- coding : utf-8 -*-

import xadmin
from xadmin import views

class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True

class GlobalSetting(object):
    site_title = "Travel后台管理系统"
    site_footer = "Travel"
    menu_style = "accordion"

xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSetting)