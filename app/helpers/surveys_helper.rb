module SurveysHelper
  def attempt_scope(resource)
    if action_name =~ /new|create/
     attempts_path(resource)
    elsif action_name =~ /edit|update/
      attempt_path(resource)
    end
  end

  def get_answer_fields attempt
    attempt.survey.questions.map { |q| Survey::Answer.new(question_id: q.id) }
  end
  
end
