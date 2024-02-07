Tight coupling refers to a software design where components or modules are highly dependent on each other. In a tightly coupled system, changes to one component often require changes to other interconnected components, making the system less flexible, harder to maintain, and less reusable. Tight coupling can hinder scalability and make testing more challenging.

Example with code:  
AppGamingBasic.java
```
public class AppGamingBasic {

	public static void main(String[] args) {
		
//		var marioGame = new MarioGame();
		var superContraGame = new SuperContraGame();
		var gameRunner = new GameRunner(superContraGame);
		gameRunner.run();
	}

}
```
GameRunner.java
```
public class GameRunner {
//	MarioGame game;
	SuperContraGame game;
	public GameRunner(SuperContraGame game) {
		this.game = game;
	}
	public void run() {
		System.out.println("Running game: " + game);
		game.up();
		game.down();
		game.left();
		game.right();
	}
}

```
MarioGame.java
```
public class MarioGame {
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
SuperContraGame.java
```
public class SuperContraGame {
	
	public void up() {
	System.out.println("Jump");
	}
	public void down() {
		System.out.println("Sit down");
	}
	public void left() {
		System.out.println("Go back");
	}
	public void right() {
		System.out.println("Shot a bullet");
	}
}

```

Here, the GameRunner class is tightly coupled between one game.

Why coupling is important in making softwares:
* Business Changes
* Product Changes
* Code Change
