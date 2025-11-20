yum install -y git
git clone https://github.com/cs298f25/Amanda-Jeremaiah-William-Tori.git
cd /Amanda-Jeremaiah-William-Tori
chmod +x redeploy.sh
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp stravaapp.service /etc/systemd/system
systemctl enable stravaapp.service
systemctl start stravaapp.service