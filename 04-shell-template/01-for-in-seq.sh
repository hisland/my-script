#!/bin/bash

for i in $(seq $LAST);
	do echo $i;
done

for i in $(seq $FIRST $LAST);
	do echo $i;
done

for i in $(seq $FIRST $INCREMENT $LAST);
	do echo $i;
done
