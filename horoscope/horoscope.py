import random

times = ["утром", "днём", "вечером", "ночью", "после обеда", "перед сном"]
advices = ["ожидайте", "предостерегайтесь", "будьте открыты для"]
promises = ["гостей из забытого прошлого", "встреч со старыми знакомыми",
            "неожиданного праздника", "приятных перемен"]

def generate_prophecies(total_num=3, num_sentences=4):
    generated_prophecies = []
    index = 0
    while index < total_num:
        inner_array = []
        sent_3 = ''
        temp = 0
        while temp < num_sentences:
            index_times = random.randrange(0, len(times))
            index_advices = random.randrange(0, len(advices))
            index_promises = random.randrange(0, len(promises))

            row = times[index_times][0].title() + times[index_times][1:] + ' ' + \
                  advices[index_advices] + ' ' + \
                  promises[index_promises] + '. '

            inner_array.append(row)
            temp += 1

        for x in inner_array:
            sent_3 += x

        generated_prophecies.append(sent_3[:-1])  # delete one last backspace
        index += 1

    return generated_prophecies