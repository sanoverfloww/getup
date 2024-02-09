git clone https://github.com/Qihang-Zhang/getup-core.git

ln -s getup-core/* .

pip install -r requirements.txt

python ./python_scripts/merge_mkdocs.py

python ./python_scripts/generate_md.py \
--cutoff 1.0 \
--getup_threshold 8.00 \
--recent_days 30 \
--name Yifan
                      
mkdocs gh-deploy --force

git add .
git commit -m "$(date +%Y-%m-%d) update"
git push origin gh-pages:gh-pages
