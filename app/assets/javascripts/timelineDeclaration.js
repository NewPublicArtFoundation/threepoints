var eventsJSON = {
    "timeline":
    {
        "headline":"Lame in Shanghai",
        "type":"default",
        "text":"<p>Before and after</p>",
        "asset": {
            "media":"https://farm9.staticflickr.com/8011/7659718044_d93886d294_z_d.jpg",
            "credit":"Gift",
            "caption":"Abandoned Parking Structure, Shanghai, China"
        },
        "date": [
            {
                "startDate":"2012,7,29",
                "endDate":"2012,7,29",
                "headline":"Rooftop in the middle of downtown Shanghai, China",
                "text":"<p>Blank walls right next to the freeway</p>",
                "tag":"blankwalls",
                "classname":"optionaluniqueclassnamecanbeaddedhere",
                "asset": {
                    "media":"http://i.imgur.com/LurRBXE.jpg",
                    "thumbnail":"http://i.imgur.com/LurRBXEs.jpg",
                    "credit":"Gift",
                    "caption":"Blank walls to be painted"
                }
            },
            {
                "startDate":"2012,7,29",
                "endDate":"2012,7,29",
                "headline":"Lame in action",
                "text":"<p>Starting off the piece with a sketch</p>",
                "tag":"graffiti",
                "classname":"optionaluniqueclassnamecanbeaddedhere",
                "asset": {
                    "media":"https://farm8.staticflickr.com/7111/7668246566_3dcd80c505_z_d.jpg",
                    "thumbnail":"https://farm8.staticflickr.com/7111/7668246566_3dcd80c505_q_d.jpg",
                    "credit":"Gift",
                    "caption":"Birds eye Lame"
                }
            },
            {
                "startDate":"2012,7,29",
                "endDate":"2012,7,29",
                "headline":"Sketching",
                "text":"<p>Lame plans out his piece</p>",
                "tag":"sketching graffiti",
                "classname":"optionaluniqueclassnamecanbeaddedhere",
                "asset": {
                    "media":"https://farm9.staticflickr.com/8023/7668245710_d3708541d7_z_d.jpg",
                    "thumbnail":"https://farm9.staticflickr.com/8023/7668245710_d3708541d7_q_d.jpg",
                    "credit":"Gift",
                    "caption":"Sketching"
                }
            },
            {
                "startDate":"2012,7,29",
                "endDate":"2012,7,29",
                "headline":"Lame looking badass",
                "text":"<p>No words needed</p>",
                "tag":"posing",
                "classname":"optionaluniqueclassnamecanbeaddedhere",
                "asset": {
                    "media":"https://farm9.staticflickr.com/8282/7668243546_3b7fd32f42_z_d.jpg",
                    "thumbnail":"https://farm9.staticflickr.com/8282/7668243546_3b7fd32f42_q_d.jpg",
                    "credit":"Gift",
                    "caption":"Contemplating"
                }
            },
            {
                "startDate":"2012,7,29",
                "endDate":"2012,7,29",
                "headline":"Final piece",
                "text":"<p>Skull character</p>",
                "tag":"graffiti character",
                "classname":"optionaluniqueclassnamecanbeaddedhere",
                "asset": {
                    "media":"https://farm9.staticflickr.com/8294/7668242622_8ccf48d6b7_z_d.jpg",
                    "thumbnail":"https://farm9.staticflickr.com/8294/7668242622_8ccf48d6b7_q_d.jpg",
                    "credit":"Gift",
                    "caption":"Skull character"
                }
            }
        ],
        "era": [
            {
                "startDate":"2012,7,29",
                "endDate":"2012,7,29",
                "headline":"Headline Goes Here",
                "text":"<p>Body text goes here, some HTML is OK</p>",
                "tag":"This is Optional"
            }

        ]
    }
}

var timelineConfig = {
  type: 'timeline',
  width: '100%',
  height: '500',
  source: eventsJSON, //get the events.json format from https://github.com/VeriteCo/TimelineJS#file-formats
  embed_id: 'time_line'
}

$(document).ready(function() {
  createStoryJS(timelineConfig);
});
