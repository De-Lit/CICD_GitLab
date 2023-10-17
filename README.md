# CICD_GitLab

В данном проекте реализован пайплайн для сборки, тестирования и доставки утилит `cat` и `grep` на базе платформы *GiLab CI*. \
Работа *gitlab-runner* настроена на выполнение в оболочке `shell` \
По результатам прохождения этапов пайплайна реализована система оповещения. Оповещение производится с помощью бота в *Telegram*

#### Этапы пайплайна:
- CI
    - Сборка утилит из исходников
    - Тест кода на стиль *clang-format*
    - Интеграционное тестирование
- CD
    - Деплой в продакшн

#### Графический вид пайплайна:
  <img src="./misc/images/report1.1.1.png" alt="ncdu" width="600">


#### Файлы проекта:
Файл с кодом пайплайна: `.gitlab-ci.yml` \
Скрипт для выполнения деплоя: `deploy_script.sh` \
Скрипт для оповещения о результатах прохождения этапов пайплайна: `telbot_script.sh` \
Директория с исходными файлами утилит *my_cat* и *my_grep*: `SimpleBashUtils`

### Пример работы пайплайна

- Успешное прохождение этапов *CI/CD*. Вид пайплайна: \
  <img src="./misc/images/report1.1.16.png" alt="ncdu" width="400">

- Успешное прохождение этапов *CI/CD*. Логи \
  <img src="./misc/images/report1.1.17.png" alt="ncdu" width="900">

- Ошибка сборки *my_cat*. Вид пайплайна: \
  <img src="./misc/images/report1.1.2.png" alt="ncdu" width="600">

- Ошибка сборки *my_cat*. Логи: \
  <img src="./misc/images/report1.1.3.png" alt="ncdu" width="800">

- Ошибка сборки *my_grep*. Вид пайплайна: \
  <img src="./misc/images/report1.1.4.png" alt="ncdu" width="600">

- Ошибка сборки *my_grep*. Логи: \
  <img src="./misc/images/report1.1.5.png" alt="ncdu" width="900">

- Ошибка стиля *my_cat*. Вид пайплайна: \
  <img src="./misc/images/report1.1.6.png" alt="ncdu" width="600">

- Ошибка стиля *my_cat*. Логи: \
  <img src="./misc/images/report1.1.7.png" alt="ncdu" width="900">

- Ошибка стиля *my_grep*. Вид пайплайна: \
  <img src="./misc/images/report1.1.8.png" alt="ncdu" width="600">

- Ошибка стиля *my_grep*. Логи: \
  <img src="./misc/images/report1.1.9.png" alt="ncdu" width="900">

- Ошибка функционала *my_cat*. Вид пайплайна: \
  <img src="./misc/images/report1.1.10.png" alt="ncdu" width="600">

- Ошибка функционала *my_cat*. Логи: \
  <img src="./misc/images/report1.1.11.png" alt="ncdu" width="900">

- Ошибка функционала *my_grep*. Вид пайплайна: \
  <img src="./misc/images/report1.1.12.png" alt="ncdu" width="600">

- Ошибка функционала *my_grep*. Логи: \
  <img src="./misc/images/report1.1.13.png" alt="ncdu" width="900">

- Ошибка деплоя (отсутствует связь с местом развертывания). Вид пайплайна: \
  <img src="./misc/images/report1.1.14.png" alt="ncdu" width="600">

- Ошибка деплоя. Логи: \
  <img src="./misc/images/report1.1.15.png" alt="ncdu" width="900">
