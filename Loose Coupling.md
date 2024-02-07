Loose Coupling is a concept which makes the code components work flexibily without depending on each other.

Here is the interface class which will solve the previous tight coupling problem:
Same methods which are used in all games will be placed inside the interface
GamingConsole.java
```
public interface GamingConsole{
 void up();
 void down();
 void left();
 void right();
}
```
Implement the interface in the those game
SuperContraGame.java
```
public class SuperContraGame implements GamingConsole{
	
	public void up() {
		System.out.println("Up");
	}
	public void down() {
		System.out.println("Down");
	}
	public void left() {
		System.out.println("Left");
	}
	public void right() {
		System.out.println("Right");
	}
}
```
MarioGame.java
```
public class MarioGame implements GamingConsole{
	public void up() {
		System.out.println("Jump");
	}
	public void down() {
		System.out.println("Go into a hole");
	}
	public void left() {
		System.out.println("Go back");
	}
	public void right() {
		System.out.println("Accelerate");
	}
}
```
AppGamingBasic.java
```

public class AppGamingBasic {

	public static void main(String[] args) {
		
//		var game = new MarioGame();
      var game = new SuperContraGame();
		  var gameRunner = new GameRunner(game);
		  gameRunner.run();
	}

}

```
Now, AppGamingBasic can run if we change the game and without modifing the GameRunner class.
