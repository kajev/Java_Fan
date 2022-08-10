package com.cgi;
import static com.cgi.Direction.BACKWARD;
import static com.cgi.Direction.FORWARD;


public class Fan {
    //need to know if we need to change fan being off or on, so public
	public static final int OFF = 0;
    //
	private int speed = OFF;
	private Direction direction = FORWARD;

	public int getSpeed() {
		return speed;
	}

	public Direction getDirection() {
		return direction;
	}
    //turns off fan if at max speed
	public void speedUp() {
		if (speed == 3) {
			speed = OFF;
		} else {
			speed++;
		}
	}
    // in the name
	public void reverseDirection() {
		direction = (direction == FORWARD) ? BACKWARD : FORWARD;
	}

	@Override
	public String toString() {
		return String.format("The fan is working on %d speed in %s direction", speed, direction);
	}
}

enum Direction {
	FORWARD,
	BACKWARD;
}