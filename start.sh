if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Private-Botz/Elsa-Bot.git /Elsa-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Elsa-Bot
fi
cd /Elsa-Bot
pip3 install -U -r requirements.txt
echo "Starting Elsa Bot...."
python3 bot.py
