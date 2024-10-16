#import "./lib.typ":*

#set page("us-letter", margin: (1in))

#let paraChildren(body) = {
    let blockHeight = state("b", 0)
    let contentHeight = state("c", 0pt)

    let pageHeight = state("pg-y", 0)
    context {
        pageHeight.update(page.height)
    }

    let everything = body.fields()
    let contents = body.fields().at("children")  // array.  fields() yields a dictionary, with the "children" value what we care about
    for b in contents {
        layout(size => [
            #let (height, ) = measure(block(width: 100%, b))

            #blockHeight.update(height)
        ])
        context {
            let oldHeight = contentHeight.get()
            contentHeight.update(
                oldHeight + blockHeight.get()
            )
        }
//         contentHeight.update( _ =>
//             context contentHeight.get() + blockHeight.get()
//         )
//         context { contentHeight.get() }
    }
}

#let sampleText = [
Most Honourable,

MY non supponent Lord, and Soveraign master of contradictions in adjected terms, that unto you I have presumed to tender the dedicacie of this introduction, will not seem strange to those, that know how your concurrence did further me to the accomplishment of that new Language, unto the frontispeice whereof it is premitted.

You did assist me in the production of many special fancies, whose promulgation will perhaps, exceedingly conduce to the delight of the Philosophical Reader: by your help, amidst the penurie of books, and want of learned conversation, have by me been enixed several treatises ; which, for their apparent usefulnesse, and curiosity, I sometime intend to consecrate to the Shrine of publique view: if none hitherto hath made choice of such a patron: neither hath any till this hour afforded an invention of that kind. In things whereof the proposed subject is within our reach, imitation is imbraceable: but where the matter is transcendent, we commonly bid patterns adieuw, that porch will not befit a cottage, which is suitable to a Cathedral, nor can unusuall dedications, misbeseem tractats on an extraordinary purpose ; seeing therefore skill in symmetrie bespeaks an artificer and gives the countexture of a work that decorum, which becomes the Author: I am with force of reason perswaded to this election, thereby to glance at the proportion betwixt your favours, and my retribution: for such were the courtesies you conferred on me, that I could not otherways choose but lay hold on this expedient, to testifie my remembrance of them.

When after the fatal blow, given at Worcester, on the third of Septemb. 1651. to the regal partie, I was 5 times plundred, pillaged, pilfred, robbed, and rifled, and nothing almost left me, fortune could dispoil me of, save my health alone, which in the croud of so many incident difficulties, as I was forced to undergo, was most miraculously preserved: You then out of your mercie, amongst the victorious soldiers, were pleased to commiserate my condition. When, in horses, armes, apparel, and monie, I had, in that place, taken from me above five hundred pounds worth English: you, at that time, out of pietie, amongst the Presbyterians of our armie, did regret my case. When it was told, that amidst the fury of the raging souldiery, I had above ten thousand crowns worth of papers embezeled, without recovery: you from your generosity of all the great men prisoners, were sorry at the losse. And lastly, when, after my being brought to London, without either monie or goods, I had my self, and several others, both brothers, and servants (whereof not any, save my self alone had been in that City before) to provide for, in every thing, that the States allowance (which neverthelesse continued no longer, then my parole was taken for their true imprisonment) did not reach unto: And that, after many of my fellow prisoners, of considerable fortunes at home, had received, from the Scottish factors, on the Exchange, in manner of borrowing monie, answers so full of churlishnesse, and inhumanity, that I am ashamed the ear of any man of common honestie should hear them: then was it (whilst the charity of those Bankers, and other rich Scots men at London, by little and little decayed, and became still the lesse, the greater the pitch was, unto which their wealth had formerly increast: And that for six months together, from none of my kindred, alliance, nor any other of my pretended friends in Scotland, I had received so much, as the mission, or return of a letter) that you (such was your magnificence) were content to supply my need, and furnish me with what I lacked.

These favours, I deem my self in duty the more obliged to commemorate, that they were bestowed upon me, in sequel of some others of that nature, namely, when, a while agoe, I had suit in Law, depending against a Gentleman neighbour1 of mine, for taking fifteen in the hundred, these sixteen years past and above,2 and refusing payment of the principall summe, that the said usurie might still continue, for the which, there was given unto him by my Father, securitie in land (by a present possession) worth more then thrice the monie, which my Father had received from him ; as likewise, for plundering from my tenants (in my absence) above two thousand, and five hundred pounds sterlin worth of goods3 : it was then that your grace, in the session of the land, and Committee of Estate, there taking notice of these enormous wrongs, did doe me justice. Much about the same time, when some Ministers had maimed my rents, to strengthen their own stipends : your reverence, sitting in the commission of the Kirk, were pleased to take my part against them, and patrocinate my cause. By your highnesse also, sitting then at the helm of the State of Scotland, when a grievance for the pressure sustained by me, was in all humility put in before the said Committee of Estates, was I maintained against the crueltie, and indiscretion of those, did overrate me in the exaction of publick dues, And finally, when by the oppression of some ill affected countrey men, under pretext of Committee acts, my vassals, and tenants had suffered extreme prejudice, streight upon the presenting of a petition thereanent, whereof at least a hundred, at several times were tabled : your wisdome remedied the plaintif, and did for my cause redresse the injuries done unto him.

That with these benevolences, as the most eminent effects of your ingenuitie, I should (as affairs then ruled) be gratified by your liberalitie, was from day to day, my constant expectation ; being always perswaded to the greater probability of my acceptance of them, that in many sound, and wel-grounded opinions of mine, long before that time, you frequently jumped with me ; for when I openly said, that Presbyterie was like to turn to a Hydral Episcopacie, and that the gallantry of the English nation would never comport with such a government (which Speech was thought should have been asserted by all the Nobles, and Gentlemen of Scotland) you out of your goodness, amongst them all (being sensible of the heavie yoke of the Democratical tyrannie of the Kirk) were pleased to justify my sayings. Besides this, when the intending of one thing, and pretending of another, was by me a thousand times foretold to prove destructive unto Scotland, and that the cause of God could not produce Diabolical effects : Your holiness, amongst the Zelots of the Nation, did give way to beleeve the truth of both. And when moreover I avouched, that money should never be held in such estimation, that either to honestie, or a good name, any summe, however so great, ought to be preserved : Your discretion, amidst many of the Ecclesiastical Armie, did in very deed acknowledge the veritie of the saying, although verbally you denyed it. And at last, when to be charitable to distressed men, whose misery could not with reason be imputed to their own fault, was by me represented to be an especial act of goodness, you, out of your love, amongst the Scotish Merchants condescended to it.

Whereby most seriously perpending the manifold, or rather innumerable testimonies of your goodness, holiness, grace, discretion, wisdome, liberalitie, reverence, mercie, pietie, generositie, magnificence, love, and other unexpressible respects, I have perceived to flow from your highness in behalf of me, whether I applyed my self to the Nobilitie, Souldierie, Gentrie, Clergie, or Burger degree of the Consistorian partie of the Scotish Nation : I must needs promise (in acquital of these incomprehensible good deeds, out of your endless, and immense bountie, so undeservedly erogated) whilst I breath, to break my parole unto you, to be to you dishonest, and prove disloyal to you in my trust, to curse you in malicious thoughts, reproach you with scandalous words, and wrong you with cruel, and unconscionable deeds : to do you injustice, deceive, and cosen you: to persecute you with hatred, envie, and rancour of mind : and according to the infallible rules of the Sacred Evangile, dictamen of reason, and precepts of Philosophie, to approve my self your faithless, implacable and wicked ennemie ; and consequently, to your contrary opposite ( every body ) upright, true, and honest : and to your contradictorie foe ( some body ) an affectionate, trustie, stedfast, and unalterable both Friend, and Servant.

Thomas Vrqhuart.]

#paraChildren(sampleText)
