/*
Copyright 2011 Marek Standio.

This file is part of SaladoPlayer.

SaladoPlayer is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published
by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

SaladoPlayer is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with SaladoPlayer. If not, see <http://www.gnu.org/licenses/>.
*/
package com.panozona.modules.buttonbar.model.structure{
	
	import com.panozona.player.module.data.structure.DataParent;
	import com.panozona.player.module.data.property.Align;
	import com.panozona.player.module.data.property.Move;
	import com.panozona.player.module.data.property.Size;
	
	public class Buttons extends DataParent {
		
		public var path:String; // intentionally not initialized 
		public var buttonSize:Size = new Size(30, 30); // NO LONGER USED SIZE IS OBTAINED FROM IMAGE DIMENSIONS
		public var align:Align = new Align(Align.RIGHT, Align.BOTTOM); // horizontal, vertical
		public var move:Move = new Move( -5, -4); // horizontal, vertical
		public var spacing:Number = 0;
		public var listenKeys:Boolean = false;
		
		override public function getChildrenTypes():Vector.<Class>{
			var result:Vector.<Class> = new Vector.<Class>();
			result.push(Button);
			result.push(ExtraButton);
			return result;
		}
	}
}