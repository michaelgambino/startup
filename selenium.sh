# Install venv

sudo apt install python3.8-venv &&

# Install selenium

pip install selenium && 

# Install kijiji-manager

git clone https://github.com/jackm/kijiji-manager.git &&
cd kijiji-manager && mkdir instance &&

python3 -m venv venv &&
source venv/bin/activate &&

pip install . &&

cd kijiji_manager &&

cp kijiji-manager-sample.cfg ~/kijiji-manager/instance/kijiji-manager.cfg