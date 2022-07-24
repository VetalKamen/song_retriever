Rails.application.routes.draw do
  mount SongRetriever::Engine => "/song_retriever"
end
