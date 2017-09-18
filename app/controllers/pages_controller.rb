class PagesController < ApplicationController

  before_action :sign_in_required, only: [:show]

  def index
    #表示内容取得
    events = Event.all
    #表示用データ成形
    @datas = []
    events.each do |event|
      @datas += [
        'title' => event.name ,     
        'start' => event.start_time.strftime("%Y-%m-%d"), #"2015-12-24 00:00:00"
        'end'   => event.end_time.strftime("%Y-%m-%d"), #"2015-12-25 24:00:00"
        'detail'=> event.message,    #"detail"
        'color' => 'red' ,
        'url'   => event_path(event)
        ]
    end
  end

  def show
  end
end
