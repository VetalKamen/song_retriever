include SongRetriever

desc 'Redirect to random song'
task :song_retriever_random do
  song = get_random_song
  listen(song)
end

desc 'Redirect to specific song'
task :song_retriever, [:song_id] do |_t, args|
  puts 'Song id should be passed' unless args.song_id
  song = get_song_by_id(args.song_id)
  listen(song)
end
