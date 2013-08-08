for file in $@
do
	git filter-branch --force --index-filter \
		  "git rm --cached --ignore-unmatch -r $file" \
			--prune-empty --tag-name-filter cat -- --all
done
