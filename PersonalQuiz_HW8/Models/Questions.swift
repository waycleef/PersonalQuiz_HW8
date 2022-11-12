//
//  Questions.swift
//  PersonalQuiz_HW8
//
//  Created by Алишер Маликов on 12.11.2022.
//

struct Questions {
    let tittle: String
    let responseType: ResponseType
    let answer: [Answer]
}

enum ResponseType {
    case single
    case multiple
    case range
    
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится ве мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанция."
        }
    }
}

extension Questions {
    static func getQuestions() -> [Questions] {
        [
            Questions(
                tittle: "Какую пищу предпочитаете",
                responseType: .single,
                answer: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle),
                ]
            ),
            Questions(
                tittle: "Что вам нравится больше?",
                responseType: .multiple,
                answer: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle),
                ]
            ),
            Questions(
                tittle: "Любите ли вы поездки на машине?",
                responseType: .range,
                answer: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog),
                ]
            )
        ]
    }
}