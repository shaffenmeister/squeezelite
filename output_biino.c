#include "squeezelite.h"

#if ALSA

void set_volume(unsigned left, unsigned right) {
	unsigned value;
	
	if( left == 0 || right == 0 ) {
		value = 0;
	}
	else
	if( left >= 65535 || right >= 65535) {
		value = 100;
	}
	else {
		value = 50;
	}

	printf("setting biino level: %u", value);
	// convert 16.16 fixed point to dB
	//~ ldB = 20 * log10( left  / 65536.0F );
	//~ rdB = 20 * log10( right / 65536.0F );
}

#endif // ALSA
