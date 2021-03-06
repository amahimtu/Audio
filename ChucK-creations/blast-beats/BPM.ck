public class BPM
{
    //global member variables
    dur myDuration[4]; //duration as array
    static dur quarterNote, eighthNote, sixteenthNote, thirtysecondNote;
    
    fun void tempo (float beat)
    {
        //beat is BPM, example 120 BPM
        60.0/(beat) => float SPB; //seconds per beat
        SPB::second => quarterNote;
        quarterNote*0.5 => eighthNote;
        eighthNote*0.5 => sixteenthNote;
        sixteenthNote*0.5=>thirtysecondNote;
        
        //store data in array
        [quarterNote, eighthNote, sixteenthNote, thirtysecondNote] @=> myDuration;
    }
}
        
        