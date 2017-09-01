from django.conf.urls import *
from django.conf import settings
from apptools.forms import DefaultAppStartForm
from apptools.views import DefaultAppModel
from django.contrib.auth import views as authView
from goflow.workflow import views as wfView
from goflow.apptools import views as appView
from goflow.runtime import views as rtView

urlpatterns = [
    url(r'^.*/logout/$', authView.logout, name='logout'),
    url(r'^.*/accounts/login/$', authView.login, {'template_name': 'goflow/login.html'}, name='login'),
    # url(r'^apptools/', authView, include('goflow.apptools.urls')),
    # url(r'^graph/', authView, include('goflow.graphics.urls')),

    # url(r'^$', wfView.index('goflow/login.html'), name='index'),
    # url(r'^$', wfView.index(), name='index'),
    # url(r'^process/dot/(?P<id>.*)$', wfView.process_dot(), name='process_dot'),
    # url(r'^cron/$', wfView.cron(), name='cron'),

    url(r'^default_app/(?P<id>.*)/$', appView.default_app, name='default_app'),
    url(r'^start/(?P<app_label>.*)/(?P<model_name>.*)/$', appView.start_application, name='start_application'),
    url(r'^start_proto/(?P<process_name>.*)/$', appView.start_application,
        {'form_class': DefaultAppStartForm,
         'redirect': '../../',
         'template': 'goflow/start_proto.html'}, name='start_application'),

    url(r'^otherswork/$', rtView.otherswork, name='otherswork'),
    url(r'^otherswork/instancehistory/$', rtView.instancehistory, name='instancehistory'),
    url(r'^myrequests/$', rtView.myrequests, name='myrequests'),
    url(r'^myrequests/instancehistory/$', rtView.instancehistory, name='instancehistory'),
    url(r'^mywork/$', rtView.mywork, name='mywork'),
    url(r'^mywork/activate/(?P<id>.*)/$', rtView.activate, name='activate'),
    url(r'^mywork/complete/(?P<id>.*)/$', rtView.complete, name='complete'),
]

# urlpatterns = patterns('django.contrib.auth.views',
#     (r'^.*/logout/$', 'logout'),
#     (r'^.*/accounts/login/$', 'login', {'template_name':'goflow/login.html'}),
#     (r'^apptools/', include('goflow.apptools.urls')),
#     (r'^graph/', include('goflow.graphics.urls')),
# )

# urlpatterns += patterns('goflow.workflow.views',
#     (r'^$', 'index'),
#     (r'^process/dot/(?P<id>.*)$','process_dot'),
#     (r'^cron/$','cron'),
# )

# urlpatterns += patterns('goflow.apptools.views',
#     (r'^default_app/(?P<id>.*)/$', 'default_app'),
#     (r'^start/(?P<app_label>.*)/(?P<model_name>.*)/$', 'start_application'),
#     (r'^start_proto/(?P<process_name>.*)/$', 'start_application',
#         {'form_class':DefaultAppStartForm,
#          'redirect':'../../',
#          'template':'goflow/start_proto.html'}),
# )

# urlpatterns += patterns('goflow.runtime.views',
#     (r'^otherswork/$',                 'otherswork'),
#     (r'^otherswork/instancehistory/$', 'instancehistory'),
#     (r'^myrequests/$',                 'myrequests'),
#     (r'^myrequests/instancehistory/$', 'instancehistory'),
#     (r'^mywork/$',                     'mywork'),
#     (r'^mywork/activate/(?P<id>.*)/$', 'activate'),
#     (r'^mywork/complete/(?P<id>.*)/$', 'complete'),
# )

