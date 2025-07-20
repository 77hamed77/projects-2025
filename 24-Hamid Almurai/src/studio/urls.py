from django.urls import path
from . import views

urlpatterns = [
    path('', views.home_view, name='home'),
    path('upload/', views.upload_view, name='upload'),
    path('login/', views.login_view, name='login'),
    path('logout/', views.logout_view, name='logout'),
    path('register/', views.register_view, name='register'),
    path('studio/', views.studio_view, name='studio'),
    path('image/<int:image_id>/', views.image_detail_view, name='image_detail'),
    path('image/<int:image_id>/delete/', views.delete_image_view, name='delete_image'),
    path('account/settings/', views.account_settings_view, name='account_settings'),
    path('preview-filter/', views.preview_filter_view, name='preview_filter'),
]
