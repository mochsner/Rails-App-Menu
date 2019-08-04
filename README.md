# Rails-App-Menu

##  Installation
### Linux
1. Prepare system
    - sudo apt-get update
    - sudo apt-get install curl
2. Download (or Update RVM)
    - Update:
        - gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
        - curl -L https://get.rvm.io | bash -s stable --ruby
    - Restart bash or run ```source /home/mo/.rvm/scripts/rvm```
3. Install Ruby
    - ```rvm get stable --autolibs=enable```
    - ```rvm install ruby```
    - ```sudo apt-get install ruby-dev```
4. ~~Install JavaScript Runtime (Node.js)
    Option 1 (Node.js way)
    - ```sudo apt-get install nodejs```~~
    Option 2 (Rails way)
    - Add ```gem 'therubyracer' ``` to the Gemfile [Docs](https://github.com/cowboyd/therubyracer "cowboyd/TheRubyRacer")
5. Install Gems
    - ```gem install bundler
gem install nokigiri```
6. Set version number
    - rvm use ruby-x.y.z@rails-app-menu --ruby-version --create	# TODO: project name

```bash
pip install foobar
```

## Usage

```python
import foobar

foobar.pluralize('word') # returns 'words'
foobar.pluralize('goose') # returns 'geese'
foobar.singularize('phenomena') # returns 'phenomenon'
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/) 
