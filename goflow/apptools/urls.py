from django.conf.urls import *
import forms
from goflow.apptools import views as appView

urlpatterns = [
    url(r'^start/(?P<app_label>.*)/(?P<model_name>.*)/$',appView.start_application ,name='start_application'),
    url(r'^start_proto/(?P<process_name>.*)/$',appView.start_application, {'form_class':forms.DefaultAppStartForm, 'template':'goflow/start_proto.html'},name= 'start_application'),
    url(r'^view_application/(?P<id>\d+)/$',appView.view_application,name= 'view_application'),
    url(r'^choice_application/(?P<id>\d+)/$',appView.choice_application,name= 'choice_application'),
    # url(r'^sendmail/$',appView.sendmail(''),name= 'sendmail'),
]

# urlpatterns = patterns('goflow.apptools.views',
#     (r'^start/(?P<app_label>.*)/(?P<model_name>.*)/$', 'start_application'),
#     (r'^start_proto/(?P<process_name>.*)/$', 'start_application', {'form_class':forms.DefaultAppStartForm, 'template':'goflow/start_proto.html'}),
#     (r'^view_application/(?P<id>\d+)/$', 'view_application'),
#     (r'^choice_application/(?P<id>\d+)/$', 'choice_application'),
#     (r'^sendmail/$', 'sendmail'),
# )
