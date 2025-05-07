from flask import Flask
import random

app = Flask(__name__)

quotes = [
    ("Albert Einstein", "Life is like riding a bicycle. To keep your balance you must keep moving."),
    ("Abraham Lincoln", "Whatever you are, be a good one."),
    ("Mahatma Gandhi", "Be the change that you wish to see in the world."),
    ("Winston Churchill", "Success is not final, failure is not fatal: It is the courage to continue that counts."),
    ("Marie Curie", "Nothing in life is to be feared, it is only to be understood."),
    ("Leonardo da Vinci", "Learning never exhausts the mind."),
    ("George Washington", "It is better to offer no excuse than a bad one."),
    ("Theodore Roosevelt", "Believe you can and you're halfway there."),
    ("Confucius", "It does not matter how slowly you go as long as you do not stop."),
    ("Socrates", "The only true wisdom is in knowing you know nothing.")
]

@app.route('/')
def quote():
    author, quote = random.choice(quotes)
    return f'<h1>{quote}</h1><p>- {author}</p>'

if __name__ == '__main__':
    # Disable debug mode to avoid _multiprocessing import error in some environments
    app.run(debug=False)
