class Task < ActiveRecord::Base

    belongs_to :group

    scope :all_done, -> { where(done: true) } # all_done

    after_save :send_mail

    delegate :name, to: :group, prefix: true, allow_nil: true # Task.first.group_name

    def set_done
      self.done = true
    end

    def send_mail
      puts "Se envió un correo!"
    end

    def set_done!
      set_done
      self.save
    end

end
