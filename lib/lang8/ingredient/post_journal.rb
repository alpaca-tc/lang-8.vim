module Lang8::Ingredient
  module PostJournal
    def self.do(theme_id: '', publish: '1', lang_num: '1', body: body, journal_id: '', subject: '', tags: '', pf_int: '5', body_mo: '', correction_type: '')
      agent = Lang8::Ingredient.agent
      confirm_path = "#{Lang8::Ingredient.root_path}/journals/confirm"
      post_args = {
        id: '',
        theme_id: theme_id,
        publish: publish,
        draft: {
          subject: '',
          lang_num: lang_num,
          body: body,
          journal_id: journal_id,
          tags: tags,
          pf_int: pf_int,
          body_mo: body_mo,
          correction_type: correction_type
        },
      }.to_fields

      agent.post(confirm_path, post_args)
    end
  end
end

