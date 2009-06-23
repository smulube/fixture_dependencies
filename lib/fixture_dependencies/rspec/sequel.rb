class Spec::Example::ExampleGroup
  def execute(*args, &block)
    begin
      Sequel::Model.db.transaction{super(*args, &block); raise Sequel::Error::Rollback}
      return true
    rescue
      return false
    end
  end

  def load(*args)
    FixtureDependencies.load(*args)
  end
end
