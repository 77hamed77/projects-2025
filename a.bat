@echo off
REM هذا السكربت ينشئ README.md داخل كل مجلد موجود في المجلد الحالي

for /d %%d in (*) do (
    REM تحقق إن %%d هو فعلاً مجلد
    if exist "%%d\" (
        echo جاري إنشاء README.md داخل %%d...

        (
        echo # مشروع الطالب: %%d
        echo.
        echo ## 💡 عنوان المشروع:
        echo (يرجى كتابة عنوان المشروع هنا)
        echo.
        echo ## 📝 وصف المشروع:
        echo (شرح بسيط عن فكرة المشروع، مشكلته، وأهميته)
        echo.
        echo ## 🛠️ التقنيات المستخدمة:
        echo - لغة البرمجة:
        echo - أدوات التحليل/البرمجة:
        echo - مكتبات:
        echo.
        echo ## 📁 هيكل المجلد:
        echo ^``^`plaintext
        echo .
        echo ├── data/
        echo ├── src/
        echo └── report.pdf
        echo ^``^`
        echo.
        echo ## 👤 الطالب:
        echo الاسم الكامل:  
        echo رقم الطالب / الكود الأكاديمي:  
        ) > "%%d\README.md"
    )
)

echo.
echo ✅ تم إنشاء ملفات README.md لكل المجلدات الموجودة.
pause
