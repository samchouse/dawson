import random

colors = ("Red", "Yellow", "Green", "Blue")
ranks = list(range(1, 11))

deck = [(color, rank) for color in colors for rank in ranks]
random.shuffle(deck)


def start_game():
    p1 = deck[:7]
    p2 = deck[7:14]
    remaining = deck[14:]

    face_up = remaining.pop(0)
    main_loop(p1, p2, remaining, [face_up])


# Discard pile (list)
def main_loop(p1, p2, deck, discard, round=0):
    if round != 0:
        print()

    player = 2 if (round + 1) % 2 == 0 else 1
    hand = p1 if player == 1 else p2

    print(f"It is player {player}'s turn.")
    print(f"The face up card is {discard[-1]}.")
    print(f"Player {player}'s hand is {hand}.")

    print()
    action = user_pick()
    if action == "play":
        card_index = pick_card(hand, discard[-1])
        card = hand.pop(card_index)
        discard.append(card)

        # Win logic
        if len(hand) == 0:
            print()
            print(f"Player {player} wins!")
            return

        main_loop(
            hand if player == 1 else p1,
            hand if player == 2 else p2,
            deck,
            discard,
            round=round + 1,
        )
    elif action == "pickup":
        if len(deck) == 0:
            deck = discard[:-1]
            random.shuffle(deck)
            discard = [discard.pop(-1)]

        hand.append(deck.pop(0))
        main_loop(
            hand if player == 1 else p1,
            hand if player == 2 else p2,
            deck,
            discard,
            round=round + 1,
        )


def user_pick():
    action = input("Do you want to play or pickup? [play/pickup] ")
    if action != "play" and action != "pickup":
        print("[ERROR] Invalid action, try again.")
        print()

        return user_pick()

    return action


def pick_card(hand, face_up):
    error = "[ERROR] Invalid card, try again."

    color = input("What card color? [r/y/g/b] ")
    try:
        number = int(input("What card number? [1-10] "))

        found = None
        for idx, card in enumerate(hand):
            if card[0].lower()[0] == color:
                if card[1] == number:
                    found = idx
                    break

        card = hand[found]
        if found is None or (card[0] != face_up[0] and card[1] != face_up[1]):
            print(error)
            print()

            return pick_card(hand, face_up)

        return found
    except Exception as _:
        print(error)
        print()

        return pick_card(hand, face_up)


start_game()
