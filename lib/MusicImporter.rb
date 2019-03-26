class MusicImporter

  attr_reader :path

  def initialize(filepath)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{filepath}/*.mp3").collect{ |path| path.gsub("#{filepath}/", "") }
  end

  def import
    files.each{ |file| Song.create_from_filename(file) }
  end
end
