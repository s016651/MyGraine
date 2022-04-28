//
//  HistoryView.swift
//  MyGraine
//
//  Created by Adam Lee (student LM) on 3/30/22.
//

import SwiftUI

struct HistoryView: View {
    let textfilesbasic = ["Stress: A dramatic increase or decrease in physical or psychological stress can trigger a migraine. Researchers find that a majority of people with migraine report that their attacks are linked to stress, and it is reported that between 50 and 80 percent of people with migraine say stress triggers their migraine headaches. Some people experienced migraine in the aftermath of a stressful event, while others experience a new attack in the midst of a stressful event. HOW TO FIX: Balance responsibilities (like schoolwork) with activities you enjoy (like relaxing or spending time with friends). It's all about balance: all work and no play is bad. Manage responsibilities. Eat healthy foods. Get proper sleep. Make time to exercise every day."

    ,  "Lack of sleep: Sleep disturbance is one of the most common factors linked to migraines. Insufficient sleep is often cited as a trigger for acute migraine attacks. Excessive sleep is a frequently reported trigger as well. Jet lag and changes in your work schedule can also be linked to the onset of migraine. Insomnia is the most common sleep disorder associated with chronic migraine. People who have chronic migraines as well as insomnia are at increased risk for anxiety or depression. These conditions have one thing in common: sleep disturbance. However, many people report that sleep often relieves their migraine headaches. HOW TO FIX: Go to sleep at the same time each night, and get up at the same time each morning, even on the weekends. Don't take naps after 3 p.m, and don't nap longer than 20 minutes. Stay away from caffeine and alcohol late in the day. Avoid nicotine completely. Get regular exercise, but not within 2-3 hours of bedtime. Don't eat a heavy meal late in the day. A light snack before bedtime is okay. Make your bedroom comfortable, dark, quiet, and not too warm or cold. Follow a routine to help you relax before sleep (for example, reading or listening to music). Turn off the TV and other screens at least an hour before bedtime. Don’t lie in bed awake. If you can’t fall asleep after 20 minutes, do something calming until you feel sleepy, like reading or listening to soft music."

    ,   "Hunger or dehydration: People with migraines should avoid skipping meals. Research consistently shows that skipping meals is frequently linked to the onset of migraine.It’s linked to falling blood glucose levels. Dehydration is also a possible migraine trigger. Failure to drink enough water has been linked to the onset of headache. A small survey of people with migraines revealed that “insufficient fluid intake” was linked to headache onset in about 40 percent of responders. HOW TO FIX: make sure you are keeping up with a daily average of 3 meals a day and sufficient amounts of water. If you are exercsing, or have completed a physical workout, make sure you increase your fluid and food intake."


    ,   "Female Hormones: Women are three times more likely to experience migraine headache than men, according to the Migraine Research Foundation. Evidence suggests that female sex hormone fluctuations may play a role in headache onset and severity. More than half of female respondents in a 2 study said they were likely to get severe migraine headaches during menstruation. A small subset of these women experienced migraine solely during menstruation. The use of oral contraceptives may make symptoms worse, while pregnancy may offer relief for certain women with migraine. However, pregnancy was linked to worsening symptoms for some women. Post-menopause may provide some limited relief from headache severity."]
    var body: some View {
                    VStack{
                        List(textfilesbasic.indices){ index in
                            Text(textfilesbasic[index])
                            
                        }

                        



                        

                    }

    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
