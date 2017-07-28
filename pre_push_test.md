* Fetch ```git clone https://github.com/bernstein7/education-board-backend.git && cd education-board-backend```
* Go to new branch ```git co -b feature/test```
* Rename somethng ```mv app/controllers/tasks_controller.rb app/controllers/tickets_controller.rb```
* Commit changes ```ga . && git commit -m "test"```
* Execute ```git diff --diff-filter=ACMRTUXB --stat --name-status origin/master | grep '\.rb$' | grep -v '^D' | awk '{print $NF}' | egrep -v '^(config/|db/|bin/)'```

**Ensure that output is `app/controllers/tickets_controller.rb` *NOT* `app/controllers/tasks_controller.rb`**
