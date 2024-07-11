/*
 * This file is part of one of the Data-Cockpit libraries.
 * 
 * Copyright (C) 2024 ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE (EPFL)
 * 
 * Author - Sébastien Rumley (sebastien.rumley@hefr.ch)
 * 
 * This open source release is made with the authorization of the EPFL,
 * the institution where the author was originally employed.
 * The author is currently affiliated with the HEIA-FR, which is the actual publisher.
 * 
 * The Data-Cockpit program is free software, you can redistribute it and/or modify
 * it under the terms of GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * The Data-Cockpit program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 * 
 * Contributor list -
 */
package ch.heiafr.isc.datacockpit.tree.clazzes;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class ObjectRecipe<T> {
	
	private Constructor<T> constructor;
	private Object[] parameters;
	private ObjectRecipe[] futureParameters;
	
	public ObjectRecipe(Constructor<T> c, Object[] param) {
		this.constructor = c;
		this.parameters = param;
	}
	
	public ObjectRecipe(Constructor<T> c, ObjectRecipe[] subs) {
		this.constructor = c;
		this.futureParameters = subs;
	}
	
	public T build() {
		try {
			if (parameters == null) {
				parameters = new Object[futureParameters.length];
				for (int i = 0 ; i < parameters.length ; i++) {
					parameters[i] = futureParameters[i].build();
				}
			}
			return constructor.newInstance(parameters);
		} catch (IllegalArgumentException e) {
			throw new IllegalStateException(e);
		} catch (InstantiationException e) {
			throw new IllegalStateException(e);
		} catch (IllegalAccessException e) {
			throw new IllegalStateException(e);
		} catch (InvocationTargetException e) {
			throw new IllegalStateException(e);
		}
	}

}
