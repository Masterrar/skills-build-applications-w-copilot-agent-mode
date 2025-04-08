# Activate virtual environment and install dependencies
cd octofit-tracker/backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Завершение процесса на порту 8000 перед запуском сервера
fuser -k 8000/tcp || true

# Запуск сервера Django
source venv/bin/activate
python3 manage.py runserver