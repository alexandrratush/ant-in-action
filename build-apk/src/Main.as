package
{

    import com.alexandrratush.ane.NativeLoggerExtension;
    import com.bit101.components.PushButton;

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;
    import flash.events.MouseEvent;

    public class Main extends Sprite
    {
        private var _buttonInfo:PushButton;

        public function Main()
        {
            if (stage) init();
            addEventListener(Event.ADDED_TO_STAGE, init);
        }

        private function init(e:Event = null):void
        {
            if (e) removeEventListener(Event.ADDED_TO_STAGE, init);

            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;

            NativeLoggerExtension.getInstance().init();

            _buttonInfo = new PushButton(this, 10, 90, "Info", buttonLogClickHandler);
        }

        private function buttonLogClickHandler(e:MouseEvent):void
        {
            NativeLoggerExtension.getInstance().info("NativeLoggerExtension", "Info message");
        }
    }
}
