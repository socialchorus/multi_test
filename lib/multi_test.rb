module MultiTest
  def self.disable_test_unit_autorun
    if defined?(Test::Unit::Runner)
      Test::Unit::Runner.module_eval("@@stop_auto_run = true")
    end
  end
end
