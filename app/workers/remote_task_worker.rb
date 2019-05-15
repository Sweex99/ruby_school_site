class RemoteTaskWorker
  include Sidekiq::Worker

  def perform(*args)
    RemoteStudy.disactive.update(active: false)
  end

end
