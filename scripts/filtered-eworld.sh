#!/bin/bash
FILES=(`emerge -p -e world | grep -e "^\[" | sed -e "s/\[.*\] //" | sort`)
FILES2=(`/usr/lib/portage/bin/pkglist | cat | sort`)
COUNT=0;
COUNT2=0;
REMOVE=0;
SAME=0;
ADD=0;

while (( $COUNT!=${#FILES[*]} )) && (( $COUNT2!=${#FILES2[*]} )); do

    if [ "${FILES[$COUNT]}" = "${FILES2[$COUNT2]}" ]; then
   (( COUNT++ )); (( COUNT2++ ));
    else
   if [[ "${FILES[$COUNT]}" < "${FILES2[$COUNT2]}" ]]; then
       echo +${FILES[$COUNT]};
       (( COUNT++ ));
   else
       if [[ "${FILES[$COUNT]}" > "${FILES2[$COUNT2]}" ]]; then
      echo -${FILES2[$COUNT2]};
      (( COUNT2++ ));
       else
      exit
       fi
   fi
    fi
done 
