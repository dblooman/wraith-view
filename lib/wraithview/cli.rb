require 'thor'
require 'wraithview'

class WraithView::CLI < Thor
  include Thor::Actions

  desc "start", "Starts Wraith view service"
  def start(*args)
    port_option = args.include?('-p') ? '' : ' -p 3000'
    args = args.join(' ')
    view = "bundle exec thin start#{port_option} #{args}"
    wraith_view(view)
  end

  desc "stop", "Stops Wraith view service"
  def stop
    view = "bundle exec thin stop"
    wraith_view(view)
  end

  private

  def wraith_view(view)
    system(view)
  end
end
