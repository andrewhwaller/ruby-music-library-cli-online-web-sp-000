class MusicImporter

  attr_reader :filepath

  def initialize(filepath)
    @filepath = filepath
  end

  def files
    @files ||= Dir.glob("#{filepath}/*.mp3").collect{ |path| path.gsub("#{filepath}/", "") }
  end

  def import
    files.each{ |file| Song.create_from_filename(file) }
  end
end
