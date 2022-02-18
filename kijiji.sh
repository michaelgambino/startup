git clone https://github.com/michaelgambino/startup.git

# Install kijiji-manager

git clone https://github.com/jackm/kijiji-manager.git &&
cd kijiji-manager && mkdir instance &&

python3 -m venv venv &&
source venv/bin/activate &&

pip install . &&

cd kijiji_manager &&

python3 ~/startup/keychange.py

mv kijiji-manager.cfg ~/kijiji-manager/instance/kijiji-manager.cfg
