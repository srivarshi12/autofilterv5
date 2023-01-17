if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/srivarshi12/autofilterv5 /autofilterv5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilterv5
fi
cd /autofilterv5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
