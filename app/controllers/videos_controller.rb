class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    Video.create(create_params)
    redirect_to action: :index
  end

  private
  def create_params
    binding.pry
    params.required(:video)["vimeo_id"] = params.required(:video)["video_url"].delete("https://vimeo.com/")
    binding.pry
    params.required(:video).permit(:video_url, :vimeo_id)
  end

end
