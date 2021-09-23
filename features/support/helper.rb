module Helper
  def manipulate_file(result, option)
    case option
    when 'create'
      File.delete('temp.json') if File.exist?('temp.json')
      file = File.new('temp.json', 'w')
      file.puts result
      file.close
    when 'recover'
      File.read('temp.json') if File.exist?('temp.json')
    when 'remove'
      File.delete('temp.json') if File.exist?('temp.json')
    end
  end

  def assemble_evidence(payload)
    evidence_result = {}
    evidence_result = {
      url_request: payload.request.uri.to_s,
      mass_data: payload.body,
      code_result: payload.code
    }
    manipulate_file(evidence_result, 'create')
  end
end
