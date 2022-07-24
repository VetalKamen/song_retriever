# SongRetriever
Has been created for better understanding of how rails engine works.

## Usage
How to use my plugin.

```bash
$ rake app:song_retriever_random
``` 
to get to a random song page

```bash
$ rake app:song_retriever[song_id]
``` 
to get to a specified song page

## Example
```bash
$ rake song_retriever[7]
``` 

## Installation
Add this line to your application's Gemfile:

```ruby
gem "song_retriever", get: 'git@github.com:VetalKamen/song_retriever.git'
```

And then execute:
```bash
$ bundle install
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
