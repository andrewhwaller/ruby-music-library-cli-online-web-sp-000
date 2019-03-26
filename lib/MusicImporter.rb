class MusicImporter

  attr_reader :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files.each { |filepath| filepath.basename }
  end

  def import
    files.each{ |file| Song.create_from_filename(file) }
  end
end
