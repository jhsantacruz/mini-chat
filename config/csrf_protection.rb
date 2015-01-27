class CsrfProtection
  def incoming(message, request, callback)
    session_token = request.session['_csrf_token']
    message_token = message['ext'] && message['ext'].delete('csrfToken')

    puts '========================'
    puts '========================'
    puts session_token.to_s
    puts message_token.to_s
    puts '========================'
    puts '========================'

    unless session_token == message_token
      message['error'] = '401::Access denied'
    end
    callback.call(message)
  end
end