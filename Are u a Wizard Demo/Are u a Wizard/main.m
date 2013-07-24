//
//  main.m
//  Are u a Wizard
//
//  Created by Lynnrichter on 13-7-8.
//  Copyright (c) 2013年 Lynnrichter. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        float strength,intelligence,speed,alchemy_skill,sum,avg;
        NSLog(@"What is your strength (1-10)?");
        scanf("%f",&strength);
        while(strength>10 || strength<1)
        {
            NSLog(@"Your aswer is deceitful!");
            NSLog(@"What is your strength (1-10)?");
            scanf("%f",&strength);
            
        }
        NSLog(@"What is your intelligence (1-10)?");
        scanf("%f",&intelligence);
        while(intelligence>10 || intelligence<1){
            NSLog(@"Your aswer is deceitful!");
            NSLog(@"What is your strength (1-10)?");
            scanf("%f",&intelligence);

        }
        
        NSLog(@"What is your speed (1-10)?");
        scanf("%f",&speed);
        while(speed >10 || speed<1){
            NSLog(@"Your aswer is deceitful!");
            NSLog(@"What is your strength (1-10)?");
            scanf("%f",&speed);
            
        }
        
        NSLog(@"What is your alchemy skill level (1-10)?");
        scanf("%f",&alchemy_skill);
        while(alchemy_skill>10 || alchemy_skill<1){
            NSLog(@"Your aswer is deceitful!");
            NSLog(@"What is your strength (1-10)?");
            scanf("%f",&alchemy_skill);
            
        }
        
        
        sum=strength+intelligence+speed+alchemy_skill;
        avg=sum/4;
        if(strength>7 && intelligence>=7 && (alchemy_skill+speed)/2<7)
        {
            NSLog(@"You are a clever brute.You are known for your defanse of Aristotle's logic,while beeing equally admired by competent athletes.In the gladiator ring,your intellegence out maches being of even greater strength.");
        }
        else if (speed >= 8 && intelligence >= 8 && (alchemy_skill + strength)/2 < 7)
        {
            NSLog(@"You are an assassin. Your sharp blade and agile mind gleam in the shadows. Being not particularly confrontational, you wear an aura of mystery.");
        }
        else if (alchemy_skill >= 8 && intelligence >= 8 && (strength + speed)/2 < 7)
        {
            NSLog(@"You are a cleric. You summon mysterious powers to heal and protect.");
        }
        else if (avg >= 8 && avg <= 9)
        {
            NSLog(@"You are a mage, apprenticed to a great wizard. One day you may be a master of the universe.");
        }
        else if (avg >= 5 && avg <= 7)
        {
            NSLog(@"You are a commoner. You will live a long life, and tend to your property.");
        }
        else if (avg >= 1 && avg <= 4)
        {
            NSLog(@"You are a peasant. Your lord is cruel. He does not compensate you for the work that you accomplish. You only dream of being successful. :(");
        }
        while (sum == 40)
        {
            NSLog(@"You are a WIZARD! You cannot be defeated!! This simple program loops in honor of you!");
        }
//        NSLog(@"sum=%f,avg=%f ",sum,avg);
    }
    return 0;
}

