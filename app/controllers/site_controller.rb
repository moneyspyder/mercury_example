class SiteController < ApplicationController

  def index
  # {
  #   "content"=>{"home_content"=>{"type"=>"full", "data"=>{}, "value"=>"This is editable content please change me<br><br>asdfdasfdasfdasfd asf asdf asd fasdfadsf dafadfs<br><br>asfhajsdf<br>", 
  #   "snippets"=>{}}}, 
  #   "site"=>{"content"=>{"home_content"=>{"type"=>"full", "data"=>{}, "value"=>"This is editable content please change me<br><br>asdfdasfdasfdasfd asf asdf asd fasdfadsf dafadfs<br><br>asfhajsdf<br>", "snippets"=>{}}}
  # }
  # }

    if request.put?
      #puts '-----------------adfas'
      #debugger
      #puts params[:content][:home_content][:value]
      text_chuck = TextChunk.find_by_name('homepage/content')
      text_chuck.text_chunk = params[:content][:home_content][:value]
      text_chuck.save
    end

  end
  
end
