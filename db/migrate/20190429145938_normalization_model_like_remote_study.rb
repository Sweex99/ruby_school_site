class NormalizationModelLikeRemoteStudy < ActiveRecord::Migration[5.1]
  def change
    rename_column :remote_studies, :Ylink, :youtube_link
    rename_column :remote_studies, :Slink, :site_link
    rename_column :remote_studies, :Subject, :subject
    add_column :remote_studies, :active, :boolean, default: true
    add_column :remote_studies, :active_to, :date
  end
end
