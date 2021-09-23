Before do
  @service = lambda do |klass|
    klass.new
  end

  Faker::Config.locale = 'pt-BR'
end

def exception_message(scenario)
  scene = scenario.failed?
  return unless scene == true

  log("\n\n----------------------------------------------")
  log('Reason:')
  log(scenario.exception.message.to_s)
  log("----------------------------------------------\n\n")
end

After do |scenario|
  result = manipulate_file(nil, 'recover').to_json
  attach(result.to_yaml, 'text/html')
  manipulate_file(nil, 'remove')

  exception_message(scenario)
end

AfterConfiguration do |config|
  config.on_event(:test_case_finished) do |event|
    puts "\n----------------------------------------------"
    puts 'Results:'
    puts " - Scenario...: #{event.test_case.name}"
    puts " - The results is: #{event.result}"
    puts "----------------------------------------------\n"
  end
end

at_exit do
  @infos = {
    'Environment' => ENV['ENV_PREFIX'],
    'Data do Teste' => Time.now.strftime('%d/%B/%Y'),
    'Hora do Teste' => Time.now.strftime('%H:%M:%S')
  }
  ReportBuilder.configure do |config|
    config.input_path = 'report/report.json'
    config.report_path = 'report/report'
    config.report_types = [:html]
    config.include_images = true
    config.report_title = 'Dojo HTTParty'
    config.additional_info = @infos
    config.color = 'indigo'
  end
  ReportBuilder.build_report
end
