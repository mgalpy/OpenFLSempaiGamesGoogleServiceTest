package;

import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.Lib;
import extension.gpg.GooglePlayGames;

/**
 * ...
 * @author mg
 */
class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		// Assets:
		var bitmapData = openfl.Assets.getBitmapData("img/helloworld.png");
		var bitmap = new Bitmap (bitmapData);
        addChild (bitmap);
		
		 // first of all... call init on the main method.
        // the boolean parameter is to enable cloud storage service. Note that google and will
        // prompt for that permission to the user the first time.
        GooglePlayGames.init(false);
        // IMPORTANT: If you call init(true) you're enabling Saved Games API, so remember to enable
        // that feature on your google play games console to avoid Runtime Errors.
        // If you don't want to use Saved Games API, just calal GooglePlayGames.init(false);

		//GooglePlayGames.displayScoreboard("EWWerWedfGT64GFDVF"); // to open one specific scoreboard.

        bitmap.x = (stage.stageWidth - bitmap.width) / 2;
        bitmap.y = (stage.stageHeight - bitmap.height) / 2;

	}

}
