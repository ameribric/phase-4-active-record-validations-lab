class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length:  { minimum: 250 }
    validates :summary, length: { in 0..250 }
    validates :category, inclusion:  { in: ['Ficton', 'Non-Fiction'] }


    validate :you_wont_believe
    validate :true_facts

    def validate_you_wont_belive
        unless title == "Won't believe", "Secret", "Top [number]", "Guess"
            errors.add(:title, "You must put a clickbait title such as: Won't believe, Secret, Top [number], Guess ")
        end
    end

    def true_facts
        if title == "True Facts"
            errors.add(:title, "You cant put 'True Facts' as your title because we know you are probably not indeed saying 'True Facts'!")
    end
  end

end
