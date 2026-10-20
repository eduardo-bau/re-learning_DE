# DuckDB configuration

To begin, we will install duckdb to run SQL locally

first run 

`curl https://install.duckdb.org | bash`

then run the next command only applies for zsh

`echo 'export PATH="$HOME/.duckdb/cli/latest:$PATH"' >> ~/.zshrc`

Then, the next command in order to refresh the shell

`source ~/.zshrc`

# DuckDB with VScode

go to `>Preferences: Open Keyboard Shortcuts (JSON)` then add the next key:

```
    {
        "key": "shift+enter",
        "command": "workbench.action.terminal.runSelectedText"
    }
```

# Create a DB
To persist a database just run de duckdb command on the terminal and add the name of your database:

`duckdb my_awesome_db.db`

The extension is relative irrelevant, you can just use: .db, .duckdb
If you already have a duckdub run: `.open 'your_database.db'`