# Improve user waiting experience in your Shiny app

Several examples to improve waiting experience in Shiny applications ✨, which is accompanied by a YouTube video.

## The background

Nobody likes it, but we can’t completely avoid it: waiting!

In apps with a lot of data processing it’s almost inevitable to have to wait before results appear. You can have the most efficient code and spend ages on the most advanced speed optimizations 🚀, sometimes your users still have to wait 1, 2, or 3 seconds. But the problem is: a couple of seconds is a lifetime in today’s world 🐢.

If you can’t change the actual waiting time, it doesn’t mean it’s game over yet. Because there is another type of waiting time that matters: the perceived waiting time 👀, aka how long the waiting ✨feels✨ for an user. 

There has been a lot of research, both online and offline (in waiting rooms for example), on perceived waiting time and waiting experience. In an [extensive literature review](https://www.researchgate.net/publication/338336943_Perceived_Waiting_Time_and_Waiting_Satisfaction_a_Systematic_Literature_Review), eight factors were identified that can be used to influence customer satisfaction with waiting times. And you can leverage this as Shiny dev!

Let’s focus on 3 factors:

⌛️ **Distraction**: give people something to do. Unoccupied time feels longer than occupied time. In the context of software: nobody likes staring at a blank screen where nothing happens. 

⌛️ **Explanation**: tell people what is going on. If you’re waiting, but you don’t know what for, you’re going to pretty annoyed. Unexplained waits feel longer than explained waits.

⌛️ **Uncertainty**: if people know how long something is going to take, it feels less longer. Uncertain wait are longer than certain waits. 

Putting it in a Shiny context:

🚀 Make users read something, have some moving elements, show images. Provide entertainment. The bare minimum: loading spinners. Other ideas: sample funny messages so there’s something different to read each time, use not-so-standard spinners, go crazy and show random memes, give users little puzzles to solve. Be creative 🎨.

🚀 Keep your users informed. Tell them why they have to wait. Explain what the app is doing. Think about notifications, changing labels on actionButtons, provide some text alongside a loading spinner. 

🚀 Users like to know when the wait will be over. Progress bars are great for that purpose. When a progress bar is at 100%, the thing that the user has been waiting for is finally there. 

Simple but effective tips and trick to improve your loading UX ✨

## Watch the video

In [this YouTube video](https://youtu.be/YrCX0FlXsW0) I go over a couple of practical examples that you can find in this repo using updateActionButton, waiter and shinycssloader ▶️🎥.

